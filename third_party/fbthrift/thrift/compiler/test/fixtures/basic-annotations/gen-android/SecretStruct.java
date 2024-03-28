/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;
import java.util.Set;
import java.util.HashSet;
import java.util.Collections;
import java.util.BitSet;
import java.util.Arrays;
import com.facebook.thrift.*;
import com.facebook.thrift.annotations.*;
import com.facebook.thrift.async.*;
import com.facebook.thrift.meta_data.*;
import com.facebook.thrift.server.*;
import com.facebook.thrift.transport.*;
import com.facebook.thrift.protocol.*;

@SuppressWarnings({ "unused", "serial" })
public class SecretStruct implements TBase, java.io.Serializable, Cloneable {
  private static final TStruct STRUCT_DESC = new TStruct("SecretStruct");
  private static final TField ID_FIELD_DESC = new TField("id", TType.I64, (short)1);
  private static final TField PASSWORD_FIELD_DESC = new TField("password", TType.STRING, (short)2, new HashMap<String, Object>() {{ put("sensitive", true); }});

  public final Long id;
  public final String password;
  public static final int ID = 1;
  public static final int PASSWORD = 2;

  public SecretStruct(
      Long id,
      String password) {
    this.id = id;
    this.password = password;
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public SecretStruct(SecretStruct other) {
    if (other.isSetId()) {
      this.id = TBaseHelper.deepCopy(other.id);
    } else {
      this.id = null;
    }
    if (other.isSetPassword()) {
      this.password = TBaseHelper.deepCopy(other.password);
    } else {
      this.password = null;
    }
  }

  public SecretStruct deepCopy() {
    return new SecretStruct(this);
  }

  public Long getId() {
    return this.id;
  }

  // Returns true if field id is set (has been assigned a value) and false otherwise
  public boolean isSetId() {
    return this.id != null;
  }

  @Sensitive
  public String getPassword() {
    return this.password;
  }

  // Returns true if field password is set (has been assigned a value) and false otherwise
  public boolean isSetPassword() {
    return this.password != null;
  }

  @Override
  public boolean equals(Object _that) {
    if (_that == null)
      return false;
    if (this == _that)
      return true;
    if (!(_that instanceof SecretStruct))
      return false;
    SecretStruct that = (SecretStruct)_that;

    if (!TBaseHelper.equalsNobinary(this.isSetId(), that.isSetId(), this.id, that.id)) { return false; }

    if (!TBaseHelper.equalsNobinary(this.isSetPassword(), that.isSetPassword(), this.password, that.password)) { return false; }

    return true;
  }

  @Override
  public int hashCode() {
    return Arrays.deepHashCode(new Object[] {id, password});
  }

  // This is required to satisfy the TBase interface, but can't be implemented on immutable struture.
  public void read(TProtocol iprot) throws TException {
    throw new TException("unimplemented in android immutable structure");
  }

  public static SecretStruct deserialize(TProtocol iprot) throws TException {
    Long tmp_id = null;
    String tmp_password = null;
    TField __field;
    iprot.readStructBegin();
    while (true)
    {
      __field = iprot.readFieldBegin();
      if (__field.type == TType.STOP) { 
        break;
      }
      switch (__field.id)
      {
        case ID:
          if (__field.type == TType.I64) {
            tmp_id = iprot.readI64();
          } else { 
            TProtocolUtil.skip(iprot, __field.type);
          }
          break;
        case PASSWORD:
          if (__field.type == TType.STRING) {
            tmp_password = iprot.readString();
          } else { 
            TProtocolUtil.skip(iprot, __field.type);
          }
          break;
        default:
          TProtocolUtil.skip(iprot, __field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();

    SecretStruct _that;
    _that = new SecretStruct(
      tmp_id
      ,tmp_password
    );
    _that.validate();
    return _that;
  }

  public void write(TProtocol oprot) throws TException {
    validate();

    oprot.writeStructBegin(STRUCT_DESC);
    if (this.id != null) {
      oprot.writeFieldBegin(ID_FIELD_DESC);
      oprot.writeI64(this.id);
      oprot.writeFieldEnd();
    }
    if (this.password != null) {
      oprot.writeFieldBegin(PASSWORD_FIELD_DESC);
      oprot.writeString(this.password);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  @Override
  public String toString() {
    return toString(1, true);
  }

  @Override
  public String toString(int indent, boolean prettyPrint) {
    return TBaseHelper.toStringHelper(this, indent, prettyPrint);
  }

  public void validate() throws TException {
    // check for required fields
  }

}
